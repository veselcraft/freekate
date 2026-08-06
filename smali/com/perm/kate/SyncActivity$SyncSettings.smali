.class public Lcom/perm/kate/SyncActivity$SyncSettings;
.super Ljava/lang/Object;
.source "SyncActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncSettings"
.end annotation


# instance fields
.field public checkedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sync_type:I

.field public with_phones_only:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/SyncActivity$SyncSettings;->with_phones_only:Z

    return-void
.end method
