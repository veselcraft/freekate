.class public final enum Lcom/inmobi/rendering/RenderView$RenderViewState;
.super Ljava/lang/Enum;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/rendering/RenderView$RenderViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/rendering/RenderView$RenderViewState;

.field public static final enum DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

.field public static final enum EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

.field public static final enum EXPANDING:Lcom/inmobi/rendering/RenderView$RenderViewState;

.field public static final enum HIDDEN:Lcom/inmobi/rendering/RenderView$RenderViewState;

.field public static final enum LOADING:Lcom/inmobi/rendering/RenderView$RenderViewState;

.field public static final enum RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

.field public static final enum RESIZING:Lcom/inmobi/rendering/RenderView$RenderViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    new-instance v0, Lcom/inmobi/rendering/RenderView$RenderViewState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/rendering/RenderView$RenderViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->LOADING:Lcom/inmobi/rendering/RenderView$RenderViewState;

    new-instance v0, Lcom/inmobi/rendering/RenderView$RenderViewState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/rendering/RenderView$RenderViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    new-instance v0, Lcom/inmobi/rendering/RenderView$RenderViewState;

    const-string v1, "RESIZED"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/rendering/RenderView$RenderViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    new-instance v0, Lcom/inmobi/rendering/RenderView$RenderViewState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/rendering/RenderView$RenderViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    new-instance v0, Lcom/inmobi/rendering/RenderView$RenderViewState;

    const-string v1, "EXPANDING"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/rendering/RenderView$RenderViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDING:Lcom/inmobi/rendering/RenderView$RenderViewState;

    new-instance v0, Lcom/inmobi/rendering/RenderView$RenderViewState;

    const-string v1, "HIDDEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/rendering/RenderView$RenderViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->HIDDEN:Lcom/inmobi/rendering/RenderView$RenderViewState;

    new-instance v0, Lcom/inmobi/rendering/RenderView$RenderViewState;

    const-string v1, "RESIZING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/rendering/RenderView$RenderViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZING:Lcom/inmobi/rendering/RenderView$RenderViewState;

    .line 158
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/rendering/RenderView$RenderViewState;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->LOADING:Lcom/inmobi/rendering/RenderView$RenderViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDING:Lcom/inmobi/rendering/RenderView$RenderViewState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/rendering/RenderView$RenderViewState;->HIDDEN:Lcom/inmobi/rendering/RenderView$RenderViewState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZING:Lcom/inmobi/rendering/RenderView$RenderViewState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->$VALUES:[Lcom/inmobi/rendering/RenderView$RenderViewState;

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
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 158
    const-class v0, Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->$VALUES:[Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0}, [Lcom/inmobi/rendering/RenderView$RenderViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method
