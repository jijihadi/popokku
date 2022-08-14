
<!--================Home Banner Area =================-->
<section class="home_banner_area">
    <div class="overlay"></div>
    <div class="banner_inner d-flex align-items-center">
        <div class="container">
            <div class="banner_content row">
                <div class="offset-lg-2 col-lg-8">
                    <h3><?=$title?></h3>
                    <p>
                        <a href="<?=site_url()?>userhome" style="color:white;">Home</a>&rarr;
                        <a style="color:white;">Donasi</a>&rarr;
                        <a style="color:white;"><?=$title?></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="contact_area p_120">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <?php if (session()->getFlashdata('msg')): ?>
                <?=session()->getFlashdata('msg')?>
                <?php endif;?>
                <?php $user = $user[0]?>
                <form class="row contact_form" action="<?=site_url()?>user/update/<?=$user['id_user']?>" method="post"
                    id="contactForm" novalidate="novalidate">
                    <div class="col-md-12">
                        <h3>Data User</h3>
                        <div class="form-group">
                            <label for="">Nama User</label>
                            <input name="nama" type="text" class="form-control" value="<?=$user['nama']?>">
                            <input name="id_user" type="hidden" class="form-control"
                                value="<?=$user['id_user']?>">
                            <input name="id_level" type="hidden" class="form-control"
                                value="<?=$user['id_level']?>">
                        </div>
                        <div class="form-group">
                        <label for="">Nomor Telfon</label>
                            <input name="no_hp" type="text" class="form-control" value="<?=$user['no_hp']?>">
                        </div>
                        <div class="form-group">
                        <label for="">Email</label>
                            <input name="email" type="email" class="form-control" value="<?=$user['email']?>">
                        </div>
                        <div class="form-group">
                        <label for="">Password</label>
                            <input name="password" type="password" class="form-control"  placeholder="password">
                            <input name="oldpassword" type="hidden" class="form-control"
                                value="<?=$user['password']?>">
                                <p class="text-secondary" style="font-size:.8em;"><i>*Kosongi jika tidak ingin merubah password</i></p>
                        </div>
                        <div class="form-group">
                        <label for="">Alamat</label>
                            <textarea name="alamat" id="examplealamat" class="form-control autosize-input"
                                placeholder="Tambahkan detail alamat seperti warna rumah, acuan, dsb."><?=$user['alamat']?></textarea>
                        </div>
                    </div>
                    <div class="col-md-12 text-right">
                        <button type="submit" value="submit" class="btn submit_btn col-md-12">Ubah</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
