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
        "Ljava/lang/Enum<",
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
    .locals 9

    .line 5
    new-instance v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/api/SearchDialogItem$SDIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    new-instance v1, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string v3, "CHAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/api/SearchDialogItem$SDIType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    new-instance v3, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string v5, "EMAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/api/SearchDialogItem$SDIType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/api/SearchDialogItem$SDIType;->EMAIL:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    new-instance v5, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string v7, "GROUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/perm/kate/api/SearchDialogItem$SDIType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/perm/kate/api/SearchDialogItem$SDIType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/perm/kate/api/SearchDialogItem$SDIType;->$VALUES:[Lcom/perm/kate/api/SearchDialogItem$SDIType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/api/SearchDialogItem$SDIType;
    .locals 1

    .line 5
    const-class v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/api/SearchDialogItem$SDIType;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/api/SearchDialogItem$SDIType;
    .locals 1

    .line 5
    sget-object v0, Lcom/perm/kate/api/SearchDialogItem$SDIType;->$VALUES:[Lcom/perm/kate/api/SearchDialogItem$SDIType;

    invoke-virtual {v0}, [Lcom/perm/kate/api/SearchDialogItem$SDIType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/api/SearchDialogItem$SDIType;

    return-object v0
.end method
