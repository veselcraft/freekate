.class Lcom/perm/kate/ChatMembersAdapter$2;
.super Lcom/perm/kate/session/Callback;
.source "ChatMembersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ChatMembersAdapter;->removeMemberFromChat(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;Landroid/app/Activity;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/ChatMembersAdapter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$2;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    iput-wide p3, p0, Lcom/perm/kate/ChatMembersAdapter$2;->val$uid:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$2;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$200(Lcom/perm/kate/ChatMembersAdapter;)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 113
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 114
    .local v0, "account_id":J
    iget-wide v2, p0, Lcom/perm/kate/ChatMembersAdapter$2;->val$uid:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 115
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/ChatMembersAdapter$2;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v3}, Lcom/perm/kate/ChatMembersAdapter;->access$100(Lcom/perm/kate/ChatMembersAdapter;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/perm/kate/ChatMembersAdapter$2;->val$uid:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->deleteChatMember(JJ)Z

    .line 116
    :cond_0
    return-void
.end method
