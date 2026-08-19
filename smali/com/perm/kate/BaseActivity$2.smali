.class Lcom/perm/kate/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$2;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$2;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$000(Lcom/perm/kate/BaseActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$2;->this$0:Lcom/perm/kate/BaseActivity;

    const v1, 0x7f09026c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/BaseActivity;->access$002(Lcom/perm/kate/BaseActivity;Landroid/view/View;)Landroid/view/View;

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$2;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$000(Lcom/perm/kate/BaseActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$2;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$000(Lcom/perm/kate/BaseActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/BaseActivity$2;->this$0:Lcom/perm/kate/BaseActivity;

    iget-boolean v1, v1, Lcom/perm/kate/BaseActivity;->refreshState:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$2;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->access$100(Lcom/perm/kate/BaseActivity;)V

    return-void
.end method
