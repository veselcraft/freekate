.class public final enum Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;
.super Ljava/lang/Enum;
.source "DisplayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/utilities/info/DisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ORIENTATION_VALUES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

.field public static final enum LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

.field public static final enum PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

.field public static final enum REVERSE_LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

.field public static final enum REVERSE_PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 21
    new-instance v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    new-instance v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    const-string v1, "REVERSE_PORTRAIT"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    new-instance v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3, v4}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    new-instance v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    const-string v1, "REVERSE_LANDSCAPE"

    invoke-direct {v0, v1, v4, v6}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    .line 20
    new-array v0, v6, [Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    sget-object v1, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->$VALUES:[Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->a:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->$VALUES:[Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v0}, [Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->a:I

    return v0
.end method
