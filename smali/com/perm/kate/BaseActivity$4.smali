.class Lcom/perm/kate/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 763
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$200(Lcom/perm/kate/BaseActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    iget-object v1, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    const v2, 0x7f0e01f8

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/BaseActivity;->access$202(Lcom/perm/kate/BaseActivity;Landroid/view/View;)Landroid/view/View;

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$200(Lcom/perm/kate/BaseActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$200(Lcom/perm/kate/BaseActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    iget-boolean v0, v0, Lcom/perm/kate/BaseActivity;->refreshState:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$4;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$300(Lcom/perm/kate/BaseActivity;)V

    .line 768
    return-void

    .line 766
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
