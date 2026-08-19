.class Lcom/perm/kate/ChatInviteActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "ChatInviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ChatInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChatInviteActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChatInviteActivity;Landroid/app/Activity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/perm/kate/ChatInviteActivity$2;->this$0:Lcom/perm/kate/ChatInviteActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 84
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 86
    iget-object p1, p0, Lcom/perm/kate/ChatInviteActivity$2;->this$0:Lcom/perm/kate/ChatInviteActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 89
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 90
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->ensureChatExists(JJJ)V

    .line 92
    iget-object p1, p0, Lcom/perm/kate/ChatInviteActivity$2;->this$0:Lcom/perm/kate/ChatInviteActivity;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/ChatInviteActivity;->access$000(Lcom/perm/kate/ChatInviteActivity;J)V

    return-void
.end method
