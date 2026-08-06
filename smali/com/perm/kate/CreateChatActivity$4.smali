.class Lcom/perm/kate/CreateChatActivity$4;
.super Ljava/lang/Object;
.source "CreateChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CreateChatActivity;->failedToastInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CreateChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CreateChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CreateChatActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/perm/kate/CreateChatActivity$4;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity$4;->this$0:Lcom/perm/kate/CreateChatActivity;

    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$4;->this$0:Lcom/perm/kate/CreateChatActivity;

    const v2, 0x7f0704b4

    invoke-virtual {v1, v2}, Lcom/perm/kate/CreateChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method
