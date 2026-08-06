.class Lcom/perm/kate/EditChatActivity$12;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->errorEditChatName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$12;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$12;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$1300(Lcom/perm/kate/EditChatActivity;)V

    .line 307
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$12;->this$0:Lcom/perm/kate/EditChatActivity;

    const v1, 0x7f07040d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 308
    return-void
.end method
