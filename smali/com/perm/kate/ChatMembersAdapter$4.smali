.class Lcom/perm/kate/ChatMembersAdapter$4;
.super Lcom/perm/kate/session/Callback;
.source "ChatMembersAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;

.field final synthetic val$is_admin:Z

.field final synthetic val$member:Lcom/perm/kate/api/ChatMember;


# direct methods
.method public static synthetic $r8$lambda$W9A-t6aaY63yfRPdLiF-UoIn9kQ(Lcom/perm/kate/ChatMembersAdapter$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/ChatMembersAdapter$4;->lambda$ready$0()V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;Landroid/app/Activity;Lcom/perm/kate/api/ChatMember;Z)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$4;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    iput-object p3, p0, Lcom/perm/kate/ChatMembersAdapter$4;->val$member:Lcom/perm/kate/api/ChatMember;

    iput-boolean p4, p0, Lcom/perm/kate/ChatMembersAdapter$4;->val$is_admin:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$ready$0()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$4;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 227
    iget-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$4;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$4;->val$member:Lcom/perm/kate/api/ChatMember;

    iget-boolean v1, p0, Lcom/perm/kate/ChatMembersAdapter$4;->val$is_admin:Z

    invoke-static {p1, v0, v1}, Lcom/perm/kate/ChatMembersAdapter;->access$600(Lcom/perm/kate/ChatMembersAdapter;Lcom/perm/kate/api/ChatMember;Z)V

    .line 228
    iget-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$4;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {p1}, Lcom/perm/kate/ChatMembersAdapter;->access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/ChatMembersAdapter$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChatMembersAdapter$4$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/ChatMembersAdapter$4;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
