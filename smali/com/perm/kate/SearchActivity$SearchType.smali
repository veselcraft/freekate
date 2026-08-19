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
        "Ljava/lang/Enum<",
        "Lcom/perm/kate/SearchActivity$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Audio:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Dialogs:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Doc:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Group:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Mentions:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Message:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum News:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum None:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum User:Lcom/perm/kate/SearchActivity$SearchType;

.field public static final enum Video:Lcom/perm/kate/SearchActivity$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 58
    new-instance v0, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v1, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v3, "Audio"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v3, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v5, "Video"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v5, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v7, "User"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v7, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v9, "Group"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v9, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v11, "Message"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v11, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v13, "News"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v13, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v15, "Doc"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/perm/kate/SearchActivity$SearchType;->Doc:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v15, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v14, "Dialogs"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/perm/kate/SearchActivity$SearchType;->Dialogs:Lcom/perm/kate/SearchActivity$SearchType;

    new-instance v14, Lcom/perm/kate/SearchActivity$SearchType;

    const-string v12, "Mentions"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/perm/kate/SearchActivity$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/perm/kate/SearchActivity$SearchType;->Mentions:Lcom/perm/kate/SearchActivity$SearchType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/perm/kate/SearchActivity$SearchType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/perm/kate/SearchActivity$SearchType;->$VALUES:[Lcom/perm/kate/SearchActivity$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/SearchActivity$SearchType;
    .locals 1

    .line 58
    const-class v0, Lcom/perm/kate/SearchActivity$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/SearchActivity$SearchType;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/SearchActivity$SearchType;
    .locals 1

    .line 58
    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->$VALUES:[Lcom/perm/kate/SearchActivity$SearchType;

    invoke-virtual {v0}, [Lcom/perm/kate/SearchActivity$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/SearchActivity$SearchType;

    return-object v0
.end method
