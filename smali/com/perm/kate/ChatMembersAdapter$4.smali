.class Lcom/perm/kate/ChatMembersAdapter$4;
.super Ljava/lang/Object;
.source "ChatMembersAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ChatMembersAdapter;->errorDeleteChatMember()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ChatMembersAdapter;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$4;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$4;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07040e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method
