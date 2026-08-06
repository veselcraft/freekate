.class final enum Lcom/perm/kate/SearchActivity$SearchType;
.super Ljava/lang/Enum;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/perm/kate/SearchActivity$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Audio:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Doc:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Group:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Message:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum News:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum None:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum User:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Video:Lcom/perm/kate/SearchActivity$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "Audio"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "Video"

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "User"

    invoke-direct {v0, v1, v6}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "Group"

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "Message"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "News"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "Doc"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Doc:Lcom/perm/kate/SearchActivity$SearchType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/perm/kate/SearchActivity$SearchType;

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Doc:Lcom/perm/kate/SearchActivity$SearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->$VALUES:[Lcom/perm/kate/SearchActivity$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/SearchActivity$SearchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/SearchActivity$SearchType;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/SearchActivity$SearchType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->$VALUES:[Lcom/perm/kate/SearchActivity$SearchType;

    invoke-virtual {v0}, [Lcom/perm/kate/SearchActivity$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/SearchActivity$SearchType;

    return-object v0
.end method
