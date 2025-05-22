.class public Ldemo/Pinyin4jAppletDemo;
.super Ljavax/swing/JApplet;
.source ""


# static fields
.field private static final P:Ljava/awt/Dimension;

.field private static Q:Ljava/lang/String;


# instance fields
.field private A:Ljavax/swing/JPanel;

.field private B:Ljavax/swing/JLabel;

.field private C:Ljavax/swing/JTextArea;

.field private D:Ljavax/swing/JPanel;

.field private E:Ljavax/swing/JLabel;

.field private F:Ljavax/swing/JTextArea;

.field private G:Ljavax/swing/JPanel;

.field private H:Ljavax/swing/JLabel;

.field private I:Ljavax/swing/JTextArea;

.field private J:Ljavax/swing/JScrollPane;

.field private K:Ljavax/swing/JScrollPane;

.field private L:Ljavax/swing/JScrollPane;

.field private M:Ljavax/swing/JScrollPane;

.field private N:Ljavax/swing/JScrollPane;

.field private O:Ljavax/swing/JScrollPane;

.field private a:Ljavax/swing/JPanel;

.field private b:Ljavax/swing/JTabbedPane;

.field private c:Ljavax/swing/JPanel;

.field private d:Ljavax/swing/JPanel;

.field private e:Ljavax/swing/JButton;

.field private f:Ljavax/swing/JPanel;

.field private g:Ljavax/swing/JTextArea;

.field private h:Ljavax/swing/JComboBox;

.field private i:Ljavax/swing/JComboBox;

.field private j:Ljavax/swing/JComboBox;

.field k:[Ljava/lang/String;

.field l:[Ljava/lang/String;

.field m:[Ljava/lang/String;

.field private n:Ljavax/swing/JLabel;

.field private o:Ljavax/swing/JLabel;

.field private p:Ljavax/swing/JTextField;

.field private q:Ljavax/swing/JPanel;

.field private r:Ljavax/swing/JLabel;

.field private s:Ljavax/swing/JTextArea;

.field private t:Ljavax/swing/JPanel;

.field private u:Ljavax/swing/JPanel;

.field private v:Ljavax/swing/JLabel;

.field private w:Ljavax/swing/JTextArea;

.field private x:Ljavax/swing/JPanel;

.field private y:Ljavax/swing/JLabel;

.field private z:Ljavax/swing/JTextArea;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0x258

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    sput-object v0, Ldemo/Pinyin4jAppletDemo;->P:Ljava/awt/Dimension;

    const-string v0, "pinyin4j-2.0.0 applet demo"

    sput-object v0, Ldemo/Pinyin4jAppletDemo;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljavax/swing/JApplet;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->a:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->b:Ljavax/swing/JTabbedPane;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->c:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->e:Ljavax/swing/JButton;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->f:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->g:Ljavax/swing/JTextArea;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->h:Ljavax/swing/JComboBox;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->i:Ljavax/swing/JComboBox;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->j:Ljavax/swing/JComboBox;

    const-string v1, "LOWERCASE"

    const-string v2, "UPPERCASE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldemo/Pinyin4jAppletDemo;->k:[Ljava/lang/String;

    const-string v1, "WITH_U_AND_COLON"

    const-string v2, "WITH_V"

    const-string v3, "WITH_U_UNICODE"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldemo/Pinyin4jAppletDemo;->l:[Ljava/lang/String;

    const-string v1, "WITH_TONE_NUMBER"

    const-string v2, "WITHOUT_TONE"

    const-string v3, "WITH_TONE_MARK"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldemo/Pinyin4jAppletDemo;->m:[Ljava/lang/String;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->n:Ljavax/swing/JLabel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->o:Ljavax/swing/JLabel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->p:Ljavax/swing/JTextField;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->r:Ljavax/swing/JLabel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->s:Ljavax/swing/JTextArea;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->t:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->u:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->v:Ljavax/swing/JLabel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->w:Ljavax/swing/JTextArea;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->x:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->y:Ljavax/swing/JLabel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->z:Ljavax/swing/JTextArea;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->A:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->B:Ljavax/swing/JLabel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->C:Ljavax/swing/JTextArea;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->D:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->E:Ljavax/swing/JLabel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->F:Ljavax/swing/JTextArea;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->G:Ljavax/swing/JPanel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->H:Ljavax/swing/JLabel;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->I:Ljavax/swing/JTextArea;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->J:Ljavax/swing/JScrollPane;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->K:Ljavax/swing/JScrollPane;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->L:Ljavax/swing/JScrollPane;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->M:Ljavax/swing/JScrollPane;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->N:Ljavax/swing/JScrollPane;

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->O:Ljavax/swing/JScrollPane;

    invoke-virtual {p0}, Ldemo/Pinyin4jAppletDemo;->init()V

    return-void
.end method

.method private A()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->D:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->E:Ljavax/swing/JLabel;

    const-string v1, "Yale Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->D:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->D:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->E:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->D:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->B()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->D:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private B()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->N:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->N:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->C()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->N:Ljavax/swing/JScrollPane;

    return-object p0
.end method

.method private C()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->F:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->F:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->F:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->F:Ljavax/swing/JTextArea;

    return-object p0
.end method

.method private D()Ljavax/swing/JComboBox;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->i:Ljavax/swing/JComboBox;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JComboBox;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->l:[Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->i:Ljavax/swing/JComboBox;

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->i:Ljavax/swing/JComboBox;

    return-object p0
.end method

.method private a()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->f:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->f:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->d()Ljavax/swing/JButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->f:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private b()Ljavax/swing/JComboBox;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->j:Ljavax/swing/JComboBox;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JComboBox;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->k:[Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->j:Ljavax/swing/JComboBox;

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->j:Ljavax/swing/JComboBox;

    return-object p0
.end method

.method private c()Ljavax/swing/JTextField;
    .locals 5

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->p:Ljavax/swing/JTextField;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->p:Ljavax/swing/JTextField;

    new-instance v1, Ljava/awt/Font;

    const/4 v2, 0x0

    const/16 v3, 0xc

    const-string v4, "Dialog"

    invoke-direct {v1, v4, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setFont(Ljava/awt/Font;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->p:Ljavax/swing/JTextField;

    const-string v1, "\u548c"

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->p:Ljavax/swing/JTextField;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x1a

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setPreferredSize(Ljava/awt/Dimension;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->p:Ljavax/swing/JTextField;

    return-object p0
.end method

.method private d()Ljavax/swing/JButton;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->e:Ljavax/swing/JButton;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->e:Ljavax/swing/JButton;

    const-string v1, "Convert to Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->e:Ljavax/swing/JButton;

    new-instance v1, Ldemo/b;

    invoke-direct {v1, p0}, Ldemo/b;-><init>(Ldemo/Pinyin4jAppletDemo;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->e:Ljavax/swing/JButton;

    return-object p0
.end method

.method private e()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->c:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->c:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->c:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->f()Ljavax/swing/JTextArea;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->c:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private f()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->g:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->g:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->g:Ljavax/swing/JTextArea;

    return-object p0
.end method

.method private g()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->a:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->a:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->a:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->h()Ljavax/swing/JTabbedPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->a:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->i()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->a:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->a()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "South"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->a:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private h()Ljavax/swing/JTabbedPane;
    .locals 4

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->b:Ljavax/swing/JTabbedPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTabbedPane;

    invoke-direct {v0}, Ljavax/swing/JTabbedPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->b:Ljavax/swing/JTabbedPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->k()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "Unformatted Chinese Romanization Systems"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->b:Ljavax/swing/JTabbedPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->e()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "Formatted Hanyu Pinyin"

    invoke-virtual {v0, v2, v3, v1, v3}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->b:Ljavax/swing/JTabbedPane;

    return-object p0
.end method

.method private i()Ljavax/swing/JPanel;
    .locals 4

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->o:Ljavax/swing/JLabel;

    const-string v1, "Input Chinese:"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->n:Ljavax/swing/JLabel;

    const-string v1, " Format:"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x280

    const/16 v3, 0x22

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->o:Ljavax/swing/JLabel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->c()Ljavax/swing/JTextField;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->n:Ljavax/swing/JLabel;

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->j()Ljavax/swing/JComboBox;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->D()Ljavax/swing/JComboBox;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->b()Ljavax/swing/JComboBox;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->d:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private j()Ljavax/swing/JComboBox;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->h:Ljavax/swing/JComboBox;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JComboBox;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->m:[Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->h:Ljavax/swing/JComboBox;

    new-instance v1, Ldemo/c;

    invoke-direct {v1, p0}, Ldemo/c;-><init>(Ldemo/Pinyin4jAppletDemo;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->h:Ljavax/swing/JComboBox;

    return-object p0
.end method

.method private k()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->r:Ljavax/swing/JLabel;

    const-string v1, "Hanyu Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/awt/GridLayout;->setRows(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/awt/GridLayout;->setHgap(I)V

    invoke-virtual {v0, v1}, Ljava/awt/GridLayout;->setVgap(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/awt/GridLayout;->setColumns(I)V

    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    iput-object v1, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->o()Ljavax/swing/JPanel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->u()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->x()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->r()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->A()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->l()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->q:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private l()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->G:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->H:Ljavax/swing/JLabel;

    const-string v1, "Gwoyeu Romatzyh"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->G:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->G:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->H:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->G:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->m()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->G:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private m()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->O:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->O:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->n()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->O:Ljavax/swing/JScrollPane;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    new-instance p0, Ldemo/Pinyin4jAppletDemo;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->runFinalizersOnExit(Z)V

    new-instance v1, Ljavax/swing/JFrame;

    sget-object v2, Ldemo/Pinyin4jAppletDemo;->Q:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    new-instance v2, Ldemo/a;

    invoke-direct {v2, p0}, Ldemo/a;-><init>(Ldemo/Pinyin4jAppletDemo;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    const-string v2, "Center"

    invoke-virtual {v1, v2, p0}, Ljavax/swing/JFrame;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {p0}, Ldemo/Pinyin4jAppletDemo;->init()V

    invoke-virtual {p0}, Ldemo/Pinyin4jAppletDemo;->start()V

    sget-object p0, Ldemo/Pinyin4jAppletDemo;->P:Ljava/awt/Dimension;

    invoke-virtual {v1, p0}, Ljavax/swing/JFrame;->setSize(Ljava/awt/Dimension;)V

    invoke-virtual {v1}, Ljavax/swing/JFrame;->pack()V

    invoke-virtual {v1, v0}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void
.end method

.method private n()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->I:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->I:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->I:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->I:Ljavax/swing/JTextArea;

    return-object p0
.end method

.method private o()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->t:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->t:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->t:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->r:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->t:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->p()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->t:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private p()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->K:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->K:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->q()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->K:Ljavax/swing/JScrollPane;

    return-object p0
.end method

.method private q()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->s:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->s:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->s:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->s:Ljavax/swing/JTextArea;

    return-object p0
.end method

.method private r()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->A:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->B:Ljavax/swing/JLabel;

    const-string v1, "MPSII Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->A:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->A:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->B:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->A:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->s()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->A:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private s()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->J:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->J:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->t()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->J:Ljavax/swing/JScrollPane;

    return-object p0
.end method

.method private t()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->C:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->C:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->C:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->C:Ljavax/swing/JTextArea;

    return-object p0
.end method

.method private u()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->u:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->v:Ljavax/swing/JLabel;

    const-string v1, "Tongyong Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->u:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->u:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->v:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->u:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->v()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->u:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private v()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->L:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->L:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->w()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->L:Ljavax/swing/JScrollPane;

    return-object p0
.end method

.method private w()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->w:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->w:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->w:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->w:Ljavax/swing/JTextArea;

    return-object p0
.end method

.method private x()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->x:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->y:Ljavax/swing/JLabel;

    const-string v1, "Wade-Giles  Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->x:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->x:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->y:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->x:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->y()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->x:Ljavax/swing/JPanel;

    return-object p0
.end method

.method private y()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->M:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->M:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->z()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->M:Ljavax/swing/JScrollPane;

    return-object p0
.end method

.method private z()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->z:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->z:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->z:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object p0, p0, Ldemo/Pinyin4jAppletDemo;->z:Ljavax/swing/JTextArea;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 1

    sget-object v0, Ldemo/Pinyin4jAppletDemo;->P:Ljava/awt/Dimension;

    invoke-virtual {p0, v0}, Ldemo/Pinyin4jAppletDemo;->setSize(Ljava/awt/Dimension;)V

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->g()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldemo/Pinyin4jAppletDemo;->setContentPane(Ljava/awt/Container;)V

    sget-object v0, Ldemo/Pinyin4jAppletDemo;->Q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldemo/Pinyin4jAppletDemo;->setName(Ljava/lang/String;)V

    return-void
.end method
