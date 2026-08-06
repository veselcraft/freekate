.class Lcom/perm/kate/ProfileLeftFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "ProfileLeftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileLeftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileLeftFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$4;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 158
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 159
    .local v0, "res":Ljava/lang/Integer;
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/ProfileLeftFragment$4;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v2, v2, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/perm/kate/db/DataHelper;->updateUserWallCount(JLjava/lang/Integer;)V

    .line 160
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$4;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/ProfileLeftFragment;->access$400(Lcom/perm/kate/ProfileLeftFragment;Ljava/lang/Integer;)V

    .line 161
    return-void
.end method
