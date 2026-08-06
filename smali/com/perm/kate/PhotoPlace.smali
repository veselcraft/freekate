.class Lcom/perm/kate/PhotoPlace;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"


# instance fields
.field doc:Lcom/perm/kate/api/Document;

.field height:I

.field photo:Lcom/perm/kate/api/Photo;

.field ratio:F

.field type:I

.field video:Lcom/perm/kate/api/Video;

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/perm/kate/api/Document;)V
    .locals 1
    .param p1, "doc"    # Lcom/perm/kate/api/Document;

    .prologue
    .line 1487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    iput-object p1, p0, Lcom/perm/kate/PhotoPlace;->doc:Lcom/perm/kate/api/Document;

    .line 1489
    const/4 v0, 0x2

    iput v0, p0, Lcom/perm/kate/PhotoPlace;->type:I

    .line 1490
    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/api/Photo;)V
    .locals 1
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1480
    iput-object p1, p0, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    .line 1481
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/PhotoPlace;->type:I

    .line 1482
    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/api/Video;)V
    .locals 1
    .param p1, "video"    # Lcom/perm/kate/api/Video;

    .prologue
    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    iput-object p1, p0, Lcom/perm/kate/PhotoPlace;->video:Lcom/perm/kate/api/Video;

    .line 1485
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/PhotoPlace;->type:I

    .line 1486
    return-void
.end method
