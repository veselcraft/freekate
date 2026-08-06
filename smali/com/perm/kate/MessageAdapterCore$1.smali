.class Lcom/perm/kate/MessageAdapterCore$1;
.super Ljava/lang/Object;
.source "MessageAdapterCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageAdapterCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageAdapterCore;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageAdapterCore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageAdapterCore;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/perm/kate/MessageAdapterCore$1;->this$0:Lcom/perm/kate/MessageAdapterCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 375
    const v1, 0x7f0e026f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 376
    .local v0, "user_id":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget v1, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 382
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageAdapterCore$1;->this$0:Lcom/perm/kate/MessageAdapterCore;

    invoke-static {v2}, Lcom/perm/kate/MessageAdapterCore;->access$000(Lcom/perm/kate/MessageAdapterCore;)Lcom/perm/kate/BaseActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/NewsCursorAdapter;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/perm/kate/MessageAdapterCore$1;->this$0:Lcom/perm/kate/MessageAdapterCore;

    invoke-static {v1}, Lcom/perm/kate/MessageAdapterCore;->access$000(Lcom/perm/kate/MessageAdapterCore;)Lcom/perm/kate/BaseActivity;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    goto :goto_0
.end method
