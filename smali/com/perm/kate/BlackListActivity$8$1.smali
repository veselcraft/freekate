.class Lcom/perm/kate/BlackListActivity$8$1;
.super Ljava/lang/Object;
.source "BlackListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity$8;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlackListActivity$8;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity$8;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BlackListActivity$8;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$8$1;->this$0:Lcom/perm/kate/BlackListActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8$1;->this$0:Lcom/perm/kate/BlackListActivity$8;

    iget-object v0, v0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f070502

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    return-void
.end method
