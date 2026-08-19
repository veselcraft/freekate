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
    .locals 0

    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2008
    iput-object p1, p0, Lcom/perm/kate/PhotoPlace;->doc:Lcom/perm/kate/api/Document;

    const/4 p1, 0x2

    .line 2009
    iput p1, p0, Lcom/perm/kate/PhotoPlace;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/api/Photo;)V
    .locals 0

    .line 1999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    iput-object p1, p0, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    const/4 p1, 0x0

    .line 2001
    iput p1, p0, Lcom/perm/kate/PhotoPlace;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/api/Video;)V
    .locals 0

    .line 2003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2004
    iput-object p1, p0, Lcom/perm/kate/PhotoPlace;->video:Lcom/perm/kate/api/Video;

    const/4 p1, 0x1

    .line 2005
    iput p1, p0, Lcom/perm/kate/PhotoPlace;->type:I

    return-void
.end method
