# Github�ڤӡ�Heroku�ؤΥ�������Ⱥ���

# PRMapSelector�������Ķ��˹��ۤ���ޤ�
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
    $ cd PRMapSelector
    $ rbenv exec bundle install
    # PRMapSelector����ư���뤫��ǧ��������¹Ԥ���ȡ�rails�λ���Ω���夬��Τǡ�
    # http://127.0.0.1:3000/ �ǥ�����������ư����ǧ��
    $ bundle exec rails server

# ���ꤵ��빹������
## ��¸��Map���Ф���롼����ɲäʤ����Ϻ��
1. config/pr_rules.yaml�򻲾Ȥ��ʤ���config/pr_maps.yaml���Խ���
config/pr_maps.yaml���פ�ʤ��ʤä��롼���Ԥ��Ⱦä��Ƥ�館�������פǤ���

2. ư���ǧ
�������ޥ�ɤθ塢�֥饦����http://127.0.0.1:3000/�˥�����������ư����ǧ
`$ bundle exec rails server`

3. �������Ƥ�git��ȿ��
git�ǹ������줿�ե�����򥹥ơ���
`$ git add .`

�������Ƥ򥳥ߥå�
`$ git commit -a -m "��������" `
���λ�������������ʬ��"update �ޥå�̾"�Ȥ�""add �ޥå�̾"�Ȥ��ä������Ǥ���

�������Ƥ򥵡��С��˥ץå���
`$ git push origin master ;git push heroku master`
���Υ��ޥ�ɤ�github���Ф��빹��
���Υ��ޥ�ɤ�heroku���Ф��빹���ȤʤäƤޤ���
���κ�Ȥθ�� http://prmapselector.herokuapp.com/ �ˤƹ�����ȿ�Ǥ���Ƥ뤫��ǧ���Ƥ���������

## ����Map���ɲäʤ����ϴ�¸��Map�κ��
����ϥ����ߥ󥰤褯���ޥåפ��Ф���ǡ��������˼��ޤ�
1. http://www.realitymod.com/mapgallery/ ����ޥåפβ������������app/assets/images/�����֡�
¸�ߤ��Ƥ��ʤ����� app/assets/images/ ���noimage.jpg�äƤΤ�¸�ߤ��Ƥ��ǡ�
����򿷥ޥå�̾�˥��ԡ�����ʤꥷ��ܥ�å���󥯤�Ž��ʤꤷ�Ƥ���������
���ե�����̾�Ϥ��٤ƾ�ʸ���ǵ������ϰ��ڤʤ��Ǥ��ꤤ���ޤ���
����ξ����� sbenehoutskirts.jpg �ȤʤäƤޤ���

2. config/pr_rules.yaml�򻲾Ȥ��ʤ���config/pr_maps.yaml���Խ���
����ξ�����

> sbenehoutskirts:  
   name: Sbeneh Outskirts  
   rules:  
     - 1  
     - 2  
     - 3  
     - 4  
     - 7  

�Ȥ��������ˤʤäƤޤ���
���ͤ� https://github.com/ltakeshi/PRMapSelector �򻲾Ȥ��Ƥ�館���ʬ����䤹�����ȡ�
���Ҿ���Ŭ�ڤʰ��֤�����Ƥ����Ƥ���������
#�����ϥץ����¦�ǥ����Ȥ���褦�ʻ��ͤˤ��Ƥ����Ф�����Ǥ��礦���������ޤǹͤ����ڤ�Ǥʤ��ä��Ǥ����������ʤ���

3. ư���ǧ
�嵭��Ʊ��
$ bundle exec rails server
