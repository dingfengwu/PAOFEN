<?php
namespace Admin\Controller;
use Think\Controller;
class HomeindexController extends AdminController
{
    public function index(){

        $userobj = M('index');
        $map = 1;
        $count =$userobj->where($map)->count();
        $p = getpagee($count,10);
        $list = $userobj->where ( $map )->order ( 'id desc' )->limit ( $p->firstRow, $p->listRows )->select ();
        $this->assign('count',$count);
        $this->assign ( 'info', $list ); // 賦值數據集
        $this->assign('count',$count);
        $this->assign ( 'page', $p->show() ); // 賦值分頁輸出

        $this->display();
    }

    public function add(){
        if($_POST){

            $date['name'] = trim(I('post.name'));
            $date['price'] = trim(I('post.price'));
            $date['img'] = trim(I('post.img'));

             $re = M('index')->add($date);


            if($re){
                $this->success('添加成功', U('index'));
            }else{
                $this->error('添加失败');
            }

        }else{
            $this->display();
        }
    }

    public function edit(){
        if(IS_POST){
            $id = $_POST['id'];
            $re = M('index')->where("id='$id'")->save($_POST);
            if($re){
                $this->success('修改成功', U('index'));
            }else{
                $this->error('修改失败');
            }
        }else{
            $id = $_REQUEST['id'];
            $info = M("index")->where("id='$id'")->find();
            $this->assign('info',$info);
            $this->display();
        }
    }


    public function del(){
        $id = $_REQUEST['id'];
        $re = M('index')->where(array('id'=>$id))->delete();
        if($re){
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

    //上传图片
    public function upload(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg','doc','docx','pdf','xls',"xlsx");// 设置附件上传类型
        $upload->rootPath  =     './Public/uploads/'; // 设置附件上传根目录
        $upload->savePath  =     ''; // 设置附件上传（子）目录
        // 上传文件
        $info   =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $bak['msg']  = $upload->getError();
            $bak['code'] = 0;
        }else{// 上传成功

            $bak['msg']  = '上传成功';
            $bak['code'] = 1;
            $bak['data'] =  '/Public/uploads/'.$info['imgFile']['savepath'].$info['imgFile']['savename'];
            $bak['datas'] =  $info;
        }
        echo json_encode($bak);
    }
}