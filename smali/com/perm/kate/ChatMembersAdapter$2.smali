.class Lcom/perm/kate/ChatMembersAdapter$2;
.super Lcom/perm/kate/session/Callback;
.source "ChatMembersAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatMembersAdapter;

.field final synthetic val$member_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatMembersAdapter;Landroid/app/Activity;J)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter$2;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    iput-wide p3, p0, Lcom/perm/kate/ChatMembersAdapter$2;->val$member_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$2;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$500(Lcom/perm/kate/ChatMembersAdapter;)V

    .line 212
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 205
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 206
    iget-wide v2, p0, Lcom/perm/kate/ChatMembersAdapter$2;->val$member_id:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 207
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter$2;->this$0:Lcom/perm/kate/ChatMembersAdapter;

    invoke-static {v0}, Lcom/perm/kate/ChatMembersAdapter;->access$400(Lcom/perm/kate/ChatMembersAdapter;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perm/kate/ChatMembersAdapter$2;->val$member_id:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteChatMember(JJ)Z

    :cond_0
    return-void
.end method
