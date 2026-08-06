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
.field public last_post:J

.field public owner_id:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    return-void
.end method
