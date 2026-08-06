.class public Lcom/perm/kate/SendLogActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SendLogActivity.java"


# instance fields
.field private text:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SendLogActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SendLogActivity;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/perm/kate/SendLogActivity;->text:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0300f9

    invoke-virtual {p0, v0}, Lcom/perm/kate/SendLogActivity;->setContentView(I)V

    .line 18
    const v0, 0x7f0703dd

    invoke-virtual {p0, v0}, Lcom/perm/kate/SendLogActivity;->setHeaderTitle(I)V

    .line 19
    invoke-virtual {p0}, Lcom/perm/kate/SendLogActivity;->setButtonsBg()V

    .line 20
    const v0, 0x7f0e0080

    invoke-virtual {p0, v0}, Lcom/perm/kate/SendLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/SendLogActivity;->text:Landroid/widget/EditText;

    .line 21
    const v0, 0x7f0e0319

    invoke-virtual {p0, v0}, Lcom/perm/kate/SendLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/SendLogActivity$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/SendLogActivity$1;-><init>(Lcom/perm/kate/SendLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
