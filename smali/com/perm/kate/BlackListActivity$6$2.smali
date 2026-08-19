.class Lcom/perm/kate/BlackListActivity$6$2;
.super Ljava/lang/Object;
.source "BlackListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlackListActivity$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity$6;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$6$2;->this$0:Lcom/perm/kate/BlackListActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6$2;->this$0:Lcom/perm/kate/BlackListActivity$6;

    iget-object v0, v0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f0f019d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
