.class public final enum Lcom/perm/kate/api/SearchDialogItem$SDIType;
.super Ljava/lang/Enum;
.source "SearchDialogItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/api/SearchDialogItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SDIType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/perm/kate/api/SearchDialogItem$SDIType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/api/SearchDialogItem$SDIType;

.field public static final enum CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

.field public static final enum EMAIL:Lcom/perm/kate/api/SearchDialogItem$SDIType;

.field public static final enum GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

.field public static final enum USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/api/SearchDialogItem$SDIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    new-instance v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/api/SearchDialogItem$SDIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    new-instance v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/api/SearchDialogItem$SDIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;->EMAIL:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    new-instance v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/api/SearchDialogItem$SDIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/perm/kate/api/SearchDialogItem$SDIType;

    sget-object v1, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/api/SearchDialogItem$SDIType;->EMAIL:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;->$VALUES:[Lcom/perm/kate/api/SearchDialogItem$SDIType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/api/SearchDialogItem$SDIType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/api/SearchDialogItem$SDIType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;->$VALUES:[Lcom/perm/kate/api/SearchDialogItem$SDIType;

    invoke-virtual {v0}, [Lcom/perm/kate/api/SearchDialogItem$SDIType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/api/SearchDialogItem$SDIType;

    return-object v0
.end method
