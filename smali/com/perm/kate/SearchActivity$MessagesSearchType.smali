.class final enum Lcom/perm/kate/SearchActivity$MessagesSearchType;
.super Ljava/lang/Enum;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MessagesSearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perm/kate/SearchActivity$MessagesSearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/SearchActivity$MessagesSearchType;

.field public static final enum DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

.field public static final enum MessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

.field public static final enum None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

.field public static final enum UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 969
    new-instance v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/SearchActivity$MessagesSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    new-instance v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const-string v3, "DialogsSearch"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/SearchActivity$MessagesSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    new-instance v3, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const-string v5, "MessagesSearch"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/SearchActivity$MessagesSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/SearchActivity$MessagesSearchType;->MessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    new-instance v5, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const-string v7, "UserMessagesSearch"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/perm/kate/SearchActivity$MessagesSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/perm/kate/SearchActivity$MessagesSearchType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/perm/kate/SearchActivity$MessagesSearchType;->$VALUES:[Lcom/perm/kate/SearchActivity$MessagesSearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 969
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/SearchActivity$MessagesSearchType;
    .locals 1

    .line 969
    const-class v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/SearchActivity$MessagesSearchType;
    .locals 1

    .line 969
    sget-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->$VALUES:[Lcom/perm/kate/SearchActivity$MessagesSearchType;

    invoke-virtual {v0}, [Lcom/perm/kate/SearchActivity$MessagesSearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/SearchActivity$MessagesSearchType;

    return-object v0
.end method
