.class public final enum Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;
.super Ljava/lang/Enum;
.source "PageCommentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/data/PageCommentList$CommentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

.field public static final enum COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

.field public static final enum EMPTY_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

.field public static final enum LOADING_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

.field public static final enum SHOW_ALL_REPLIES:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 238
    new-instance v0, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    const-string v1, "COMMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    new-instance v1, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    const-string v3, "LOADING_PAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->LOADING_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    new-instance v3, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    const-string v5, "EMPTY_PAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->EMPTY_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    new-instance v5, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    const-string v7, "SHOW_ALL_REPLIES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->SHOW_ALL_REPLIES:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 237
    sput-object v7, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->$VALUES:[Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;
    .locals 1

    .line 237
    const-class v0, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;
    .locals 1

    .line 237
    sget-object v0, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->$VALUES:[Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    invoke-virtual {v0}, [Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    return-object v0
.end method
