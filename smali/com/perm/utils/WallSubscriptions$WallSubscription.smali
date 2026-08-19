.class public Lcom/perm/utils/WallSubscriptions$WallSubscription;
.super Ljava/lang/Object;
.source "WallSubscriptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/utils/WallSubscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallSubscription"
.end annotation


# instance fields
.field public error_time:J

.field public last_post:J

.field public owner_id:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 186
    iput-wide v0, p0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    .line 188
    iput-wide v0, p0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->error_time:J

    return-void
.end method
