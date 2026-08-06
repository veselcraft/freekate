.class public Lcom/perm/kate/DeactivatedActivity;
.super Lcom/perm/kate/BaseActivity;
.source "DeactivatedActivity.java"


# instance fields
.field private listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/perm/kate/DeactivatedActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/DeactivatedActivity$1;-><init>(Lcom/perm/kate/DeactivatedActivity;)V

    iput-object v0, p0, Lcom/perm/kate/DeactivatedActivity;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v2, 0x7f03004b

    invoke-virtual {p0, v2}, Lcom/perm/kate/DeactivatedActivity;->setContentView(I)V

    .line 18
    const v2, 0x7f0e010a

    invoke-virtual {p0, v2}, Lcom/perm/kate/DeactivatedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 19
    .local v0, "b":Landroid/widget/Button;
    iget-object v2, p0, Lcom/perm/kate/DeactivatedActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v2, 0x7f0e0109

    invoke-virtual {p0, v2}, Lcom/perm/kate/DeactivatedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 22
    .local v1, "textMessage":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 23
    return-void
.end method
