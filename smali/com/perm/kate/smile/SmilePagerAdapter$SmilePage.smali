.class public Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;
.super Ljava/lang/Object;
.source "SmilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/smile/SmilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmilePage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;
    }
.end annotation


# instance fields
.field smile_page:I

.field sticker_ids:[I

.field sticker_set_id:I

.field private title:Ljava/lang/String;

.field type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;


# direct methods
.method public constructor <init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V
    .locals 0
    .param p1, "type"    # Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;
    .param p2, "smile_page"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    .line 141
    iput p2, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I[ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;
    .param p2, "sticker_set_id"    # I
    .param p3, "sticker_ids"    # [I
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    .line 133
    iput p2, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->sticker_set_id:I

    .line 134
    iput-object p3, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->sticker_ids:[I

    .line 135
    iput-object p4, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->title:Ljava/lang/String;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->title:Ljava/lang/String;

    return-object v0
.end method
