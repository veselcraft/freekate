.class Lcom/perm/kate/BlackListActivity$6$1;
.super Ljava/lang/Object;
.source "BlackListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity$6;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlackListActivity$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity$6;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BlackListActivity$6;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$6$1;->this$0:Lcom/perm/kate/BlackListActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6$1;->this$0:Lcom/perm/kate/BlackListActivity$6;

    iget-object v0, v0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f07014e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    return-void
.end method
