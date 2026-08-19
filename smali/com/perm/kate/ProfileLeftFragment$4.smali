.class Lcom/perm/kate/ProfileLeftFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "ProfileLeftFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;Landroid/app/Activity;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$4;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 158
    check-cast p1, [Ljava/lang/Integer;

    .line 159
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$4;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/perm/kate/db/DataHelper;->updateUserWallCount(J[Ljava/lang/Integer;)V

    .line 160
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$4;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/ProfileLeftFragment;->access$500(Lcom/perm/kate/ProfileLeftFragment;[Ljava/lang/Integer;)V

    return-void
.end method
