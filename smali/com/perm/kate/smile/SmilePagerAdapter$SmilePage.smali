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

.field private title:Ljava/lang/String;

.field type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;


# direct methods
.method public constructor <init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    .line 142
    iput p2, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->smile_page:I

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;I[ILjava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->type:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    .line 135
    iput-object p3, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->sticker_ids:[I

    .line 136
    iput-object p4, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;)Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;->title:Ljava/lang/String;

    return-object p0
.end method
