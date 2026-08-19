.class public Lcom/perm/kate/NewsItemTag;
.super Ljava/lang/Object;
.source "NewsItemTag.java"


# instance fields
.field public _id:J

.field public album_id:Ljava/lang/String;

.field public comment_can_post:Z

.field public copy_owner_group:Lcom/perm/kate/api/Group;

.field public copy_owner_id:Ljava/lang/Long;

.field public copy_owner_user:Lcom/perm/kate/api/User;

.field public copy_text:Ljava/lang/String;

.field public date:J

.field public friend_ids:Ljava/lang/String;

.field public friends:Ljava/lang/String;

.field public i_like:Z

.field public is_graffiti:Z

.field public is_pinned:Z

.field public is_explicit:Z

.field public is_suggested:Z

.field public photo_id:Ljava/lang/Long;

.field public photo_owner_id:Ljava/lang/String;

.field public post_id:Ljava/lang/String;

.field public post_owner_id:Ljava/lang/Long;

.field public publish_date:Ljava/lang/Long;

.field public signer_id:J

.field public text:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public view_holder:Lcom/perm/kate/ViewHolder;

.field public wall_owner_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/perm/kate/NewsItemTag;->is_graffiti:Z

    .line 39
    iput-boolean v0, p0, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    .line 40
    iput-boolean v0, p0, Lcom/perm/kate/NewsItemTag;->is_pinned:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/NewsItemTag;->comment_can_post:Z

    return-void
.end method
