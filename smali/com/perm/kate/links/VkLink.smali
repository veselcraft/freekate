.class public Lcom/perm/kate/links/VkLink;
.super Ljava/lang/Object;
.source "VkLink.java"


# instance fields
.field public album_id:Ljava/lang/String;

.field public comment_id:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public owner_id:Ljava/lang/String;

.field public photo:Ljava/lang/String;

.field public topic_id:Ljava/lang/String;

.field public type:Lcom/perm/kate/links/VkLinkType;


# direct methods
.method public constructor <init>(Lcom/perm/kate/links/VkLinkType;)V
    .locals 0
    .param p1, "type"    # Lcom/perm/kate/links/VkLinkType;

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    .line 7
    return-void
.end method
