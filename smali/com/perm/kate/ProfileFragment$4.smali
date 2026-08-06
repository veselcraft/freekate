.class Lcom/perm/kate/ProfileFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$4;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 296
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 297
    .local v0, "res":Ljava/lang/Integer;
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$4;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v2, v2, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/perm/kate/db/DataHelper;->updateUserWallCount(JLjava/lang/Integer;)V

    .line 298
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$4;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/ProfileFragment;->access$1300(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)V

    .line 299
    return-void
.end method
