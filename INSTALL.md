# Github�ڤӡ�Heroku�ؤΥ�������Ⱥ���
## ����
Github��Heroku�ؤ��Խ����½Ф��Τǡ��ΤƤʥ᡼�륢�ɥ쥹�Ǥ⤤���Τǡ�Ŭ���ʥ᡼�륢�ɥ쥹���Ķ����Ƥ���������  
���Υޥ˥奢���Ubuntu12.04�ˤƺ������Ƥޤ���¾��OS�Ǻ�Ȥ������Ŭ���ɤ��ؤ��Ƥ���������  

## SSH�θ�����ǧ���ѤΥե���������(���Ǥ�¸�ߤ��Ƥ�����ɤ����Ф��Ƥ�������)
`$ ssh-keygen`  
�Ǹ��������������������Ϳ���ʤ���id_rsa��id_rsa.pub�Ȥ����ե����뤬���������Ϥ�

## Github�ؤ���Ͽ
1. [Github](https://github.com/)�˥���������
1. ��������Ȥ����
1. AccountSettings����SSH Keys�Ȥ������ܤǸ���������Ͽ
1. `$ ssh git@github.com`  ��Ԥ�  
`Hi �桼��̾! You've successfully authenticated, but GitHub does not provide shell access.`�Ȥ���ȿ�����֤äƤ���н�λ�Ǥ���
1. �����ޤǽ�λ������ltakeshi�ޤǤ����󤯤��������������Ƥ�����������������Ȥ��Խ����½Ф��ޤ���

## Heroku�ؤ���Ͽ
1. �᡼�륢�ɥ쥹�򶵤��Ƥ������������Խ����½Ф��ޤ���
1. `heroku login`  �ǥ��������뤫�ɤ�����ǧ���Ƥ���������

# PRMapSelector�������Ķ��˹���
## �饤�֥�ꥤ�󥹥ȡ���
    $ sudo apt-get install -y git-core build-essential curl zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev sqlite3 libsqlite3-dev libpq-dev
    $ sudo apt-get build-dep ruby-defaults

## Ruby�Υ��󥹥ȡ���
    $ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    $ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    $ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    $ source ~/.bashrc
    $ rbenv install 2.1.0
    $ rbenv rehash
    $ rbenv global 2.1.0

## Rails���󥹥ȡ���
    $ rbenv exec gem install bundler
    $ rbenv rehash
    $ mkdir ~/src
    $ cd ~/src
    $ git clone git@github.com:ltakeshi/PRMapSelector.git
    PRMapSelector/.git/config�˰ʲ����ɵ�
---
    [remote "heroku"]
        url = git@heroku.com:prmapselector.git
        fetch = +refs/heads/*:refs/remotes/heroku/*
---
    $ cd PRMapSelector
    $ rbenv exec bundle install
    # PRMapSelector����ư���뤫��ǧ��������¹Ԥ���ȡ�rails�λ���Ω���夬��Τǡ�
    # http://127.0.0.1:3000/ �ǥ�����������ư����ǧ��
    $ bundle exec rails server

# ���ꤵ��빹������
## ��¸��Map���Ф���롼����ɲäʤ����Ϻ��
1. config/pr_rules.yaml�򻲾Ȥ��ʤ���config/pr_maps.yaml���Խ���  
config/pr_maps.yaml���פ�ʤ��ʤä��롼���Ԥ��Ⱦä��Ƥ�館�������פǤ���

1. ư���ǧ  
�������ޥ�ɤθ塢�֥饦���� http://127.0.0.1:3000/ �˥�����������ư����ǧ  
`$ bundle exec rails server`

1. �������Ƥ�git��ȿ��  
git�ǹ������줿�ե�����򥹥ơ���  
`$ git add .`

1. �������Ƥ򥳥ߥå�  
`$ git commit -a -m "��������" `  
���λ�������������ʬ��"update �ޥå�̾"�Ȥ�"add �ޥå�̾"�Ȥ��ä������Ǥ���

1. �������Ƥ򥵡��С��˥ץå���  
`$ git push origin master ;git push heroku master`  
���Υ��ޥ�ɤ�github���Ф��빹��  
���Υ��ޥ�ɤ�heroku���Ф��빹���ȤʤäƤޤ���  
���κ�Ȥθ�� http://prmapselector.herokuapp.com/ �ˤƹ�����ȿ�Ǥ���Ƥ뤫��ǧ���Ƥ���������

## ����Map���ɲäʤ����ϴ�¸��Map�κ��
����ϥ����ߥ󥰤褯���ޥåפ��Ф���ǡ��������˼��ޤ�

1. [Project Reality: BF2 Map Gallery](http://www.realitymod.com/mapgallery/) ����ޥåפβ������������app/assets/images/�����֡�
¸�ߤ��Ƥ��ʤ����� app/assets/images/ ���noimage.jpg�äƤΤ�¸�ߤ��Ƥ��ǡ�
����򿷥ޥå�̾�˥��ԡ����Ƥ���������
���ե�����̾�Ϥ��٤ƾ�ʸ���ǵ������ϰ��ڤʤ��Ǥ��ꤤ���ޤ���
����ξ����� _sbenehoutskirts.jpg_ �ȤʤäƤޤ���

1. config/pr_rules.yaml�򻲾Ȥ��ʤ���config/pr_maps.yaml���Խ�  
����ξ����Ȳ����Τ褦�ˤʤäƤ��ޤ���  
���ͤ� https://github.com/ltakeshi/PRMapSelector �򻲾Ȥ��Ƥ�館���ʬ����䤹�����ȡ�  
���Ҿ���Ŭ�ڤʰ��֤�����Ƥ����Ƥ���������  
```yaml
sbenehoutskirts:
  name: Sbeneh Outskirts
  rules:
    - 1
    - 2
    - 3
    - 4
    - 7
```

����ʹߤϾ嵭���[2.](https://github.com/ltakeshi/PRMapSelector/blob/master/INSTALL.md#%E6%97%A2%E5%AD%98%E3%81%AEmap%E3%81%AB%E5%AF%BE%E3%81%99%E3%82%8B%E3%83%AB%E3%83%BC%E3%83%AB%E3%81%AE%E8%BF%BD%E5%8A%A0%E3%81%AA%E3%81%84%E3%81%97%E3%81%AF%E5%89%8A%E9%99%A4)�ʹߤ�Ʊ��ư���ˤʤ�ޤ���
