# PRMapSelector
## ����
PRMapSelector��[BF2:PR](http://www.realitymod.com/)�����ܿͥ��ߥ�˥ƥ��Ǥ���[Battlefield2:ProjectReality ������祳�ߥ�˥ƥ�](http://projectreality-jp.blogspot.jp/)�ˤ��轵�������˹Ԥ��륤�٥�ȤΥޥå������������뤿�������ޤ�����

## ����
### ����ե�����
config/pr\_maps.yaml��config/pr\_rules.yaml�򻲾Ȥ��ưʲ��Τ褦�ʥե����ޥåȤ�ʸ�������Ϥ��ޤ���

* Al Basrah: INS Std
* Burning Sands: AAS Large
* Hill 488: AAS Alt
* Shijia Valley: C&C Std 

#### config/pr\_maps.yaml
config/pr\_maps.yaml��YAML�����ˤʤäƤ��ꡢ�ʲ��Υե����ޥåȤȤʤäƤ��ޤ���
<pre>
albasrah:
    name: Al Basrah
	rules:
        - 6
    	- 7
    	- 8
</pre>
�嵭�����Al Basrah�Ǥ���������¾�ξ���Ʊ�ͤǤ�������Ū�ˤ�
<pre>
    albasrah:
</pre>
�ǥץ������ǻ��Ȥ����̾�������ꤷ�ޤ������٤ƾ�ʸ���Ƕ������Ͻ������Τ���Ѥ��ޤ���
<pre>
    name: Al Basrah
</pre>
�ޥåפ�����̾�Τ����ꤷ�Ƥ��ޤ������줬�ǽ�Ū�ʥե����ޥåȤν��Ϥκݤ����Ѥ���ޤ����ü��ʸ����¸�ߤ��Ƥ�����ϥ��������פʤɤ��Ƥ�����������Ȥ��Ƥϰʲ��Τ褦�ˤʤ�ޤ���
<pre>
    name: 'Charlie''s Point'
</pre>
�롼������ꤷ�Ƥ���Τϰʲ��ιԤˤʤ�ޤ���
<pre>
	rules:
        - 6
    	- 7
    	- 8
</pre>
�롼���config/pr\_rules.yaml�򻲾Ȥ��Ƥ��ꡢ�롼������򤹤�ݤ˻��Ѥ���ޤ���

#### config/pr\_rules.yaml
config/pr\_rules.yaml��YAML�����ˤʤäƤ��ꡢ�ʲ��Υե����ޥåȤȤʤäƤ��ޤ���
<pre>
1: AAS Inf
2: AAS Alt
</pre>
�����ʬ�����������ܺ٤�ά��

#### *.html.erb���javascript�ˤĤ���
jQuery+Javascript�ˤĤ��Ƥ��ǿͤʤΤ�(¾�⤢�ޤ��Ѥ��ʤ�����)ư���Ф��������٤Ǻ�äƤޤ������꤬����м�ͳ��ľ���Ƥ���������

### �ǥ�����ˤĤ���
����[twitter-bootstrap](http://getbootstrap.com/)��[masonry](http://masonry.desandro.com/)�����Ѥ��ƥǥ����󤷤Ƥ��ޤ������꤬����м�ͳ��ľ���Ƥ���������

## ���Τ�����

* �ޥåפ����򤷤Ƥ��ʤ��Ƥ�롼������򤹤���̤����ܤǤ��롣�ޥå�����ڡ����ˤ�Javascript���б����褦�Ȼפä����ɡ���������­�ˤ��̤������
* app/assets/images�ˤ��륤�᡼����[Project Reality: BF2 Map Gallery](http://www.ancientdev.com/mapgallery/)����̵�Ǥǻ��äƤ��Ƥ��ǥ�������ˤʤ뤫�⡣����ˤʤäƤ����б��Ǥ⤤�����ʡ���ľ�ɤ��Ƥ��⤫�Фʤ���