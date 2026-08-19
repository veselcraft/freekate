.class public Lcom/perm/kate/NewGroupActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewGroupActivity.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cancel_ClickListener:Landroid/view/View$OnClickListener;

.field private description:Ljava/lang/String;

.field private ed_description:Landroid/widget/EditText;

.field private ed_title:Landroid/widget/EditText;

.field private public_page_type:Ljava/lang/Integer;

.field private public_page_type_SelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private save_ClickListener:Landroid/view/View$OnClickListener;

.field private sp_communities_type:Landroid/widget/Spinner;

.field private sp_public_page_type:Landroid/widget/Spinner;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private type_SelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->title:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->description:Ljava/lang/String;

    const-string v0, "group"

    .line 26
    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->type:Ljava/lang/String;

    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->public_page_type:Ljava/lang/Integer;

    .line 47
    new-instance v0, Lcom/perm/kate/NewGroupActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupActivity$1;-><init>(Lcom/perm/kate/NewGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->type_SelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 59
    new-instance v0, Lcom/perm/kate/NewGroupActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupActivity$2;-><init>(Lcom/perm/kate/NewGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->public_page_type_SelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 68
    new-instance v0, Lcom/perm/kate/NewGroupActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupActivity$3;-><init>(Lcom/perm/kate/NewGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->save_ClickListener:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/perm/kate/NewGroupActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupActivity$4;-><init>(Lcom/perm/kate/NewGroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->cancel_ClickListener:Landroid/view/View$OnClickListener;

    .line 98
    new-instance v0, Lcom/perm/kate/NewGroupActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewGroupActivity$6;-><init>(Lcom/perm/kate/NewGroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewGroupActivity;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/NewGroupActivity;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/perm/kate/NewGroupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/NewGroupActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/NewGroupActivity;->sp_public_page_type:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/NewGroupActivity;)Ljava/lang/Integer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/NewGroupActivity;->public_page_type:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/NewGroupActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity;->public_page_type:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/NewGroupActivity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/perm/kate/NewGroupActivity;->createGroup()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NewGroupActivity;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/NewGroupActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewGroupActivity;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/NewGroupActivity;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewGroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/NewGroupActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private createGroup()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity;->ed_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->title:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity;->ed_description:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewGroupActivity;->description:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0537

    .line 86
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/perm/kate/NewGroupActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupActivity$5;-><init>(Lcom/perm/kate/NewGroupActivity;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00c7

    .line 32
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01df

    .line 33
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09010c

    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity;->ed_title:Landroid/widget/EditText;

    const p1, 0x7f0902e6

    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity;->sp_communities_type:Landroid/widget/Spinner;

    .line 36
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity;->type_SelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0902f5

    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity;->sp_public_page_type:Landroid/widget/Spinner;

    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity;->public_page_type_SelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0900fe

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity;->ed_description:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity;->btn_save:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity;->save_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity;->btn_cancel:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity;->cancel_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/perm/kate/NewGroupActivity;->ed_title:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
