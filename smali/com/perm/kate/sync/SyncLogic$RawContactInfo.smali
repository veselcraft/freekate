.class Lcom/perm/kate/sync/SyncLogic$RawContactInfo;
.super Ljava/lang/Object;
.source "SyncLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/sync/SyncLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawContactInfo"
.end annotation


# instance fields
.field id:Ljava/lang/Long;

.field photo_url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/kate/sync/SyncLogic$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/perm/kate/sync/SyncLogic$1;

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;-><init>()V

    return-void
.end method
