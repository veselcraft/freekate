.class Lcom/perm/kate/ChatMembersAdapter$6;
.super Ljava/lang/Object;
.source "ChatMembersAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$6;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$6;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f04a5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
