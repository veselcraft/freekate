.class Lcom/perm/kate/ProfileInfoFragment$27;
.super Lcom/perm/kate/session/Callback;
.source "ProfileInfoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$27;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 1072
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$27;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/perm/kate/ProfileInfoFragment;->access$2002(Lcom/perm/kate/ProfileInfoFragment;Z)Z

    .line 1075
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1076
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1077
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment$27;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v3, v3, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1079
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment$27;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v3, v3, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/perm/kate/db/DataHelper;->createFriend(JJ)J

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$27;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/perm/kate/ProfileInfoFragment;->access$2100(Lcom/perm/kate/ProfileInfoFragment;I)V

    :cond_2
    return-void
.end method
