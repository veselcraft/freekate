.class Lcom/perm/kate/ProfileFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 303
    check-cast p1, [Ljava/lang/Integer;

    .line 304
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/perm/kate/db/DataHelper;->updateUserWallCount(J[Ljava/lang/Integer;)V

    .line 305
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/ProfileFragment;->access$1400(Lcom/perm/kate/ProfileFragment;[Ljava/lang/Integer;)V

    return-void
.end method
