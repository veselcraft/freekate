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
        "Ljava/lang/Enum",
        "<",
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
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 937
    new-instance v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/SearchActivity$MessagesSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const-string v1, "DialogsSearch"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/SearchActivity$MessagesSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const-string v1, "MessagesSearch"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/SearchActivity$MessagesSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->MessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    new-instance v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const-string v1, "UserMessagesSearch"

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/SearchActivity$MessagesSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/perm/kate/SearchActivity$MessagesSearchType;

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->None:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->MessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->$VALUES:[Lcom/perm/kate/SearchActivity$MessagesSearchType;

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
    .line 937
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/SearchActivity$MessagesSearchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 937
    const-class v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/SearchActivity$MessagesSearchType;
    .locals 1

    .prologue
    .line 937
    sget-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->$VALUES:[Lcom/perm/kate/SearchActivity$MessagesSearchType;

    invoke-virtual {v0}, [Lcom/perm/kate/SearchActivity$MessagesSearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/SearchActivity$MessagesSearchType;

    return-object v0
.end method
