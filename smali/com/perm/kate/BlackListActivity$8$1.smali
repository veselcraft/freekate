.class Lcom/perm/kate/BlackListActivity$8$1;
.super Ljava/lang/Object;
.source "BlackListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlackListActivity$8;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity$8;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$8$1;->this$0:Lcom/perm/kate/BlackListActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8$1;->this$0:Lcom/perm/kate/BlackListActivity$8;

    iget-object v0, v0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f0f0587

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
