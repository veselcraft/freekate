.class public final enum Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;
.super Ljava/lang/Enum;
.source "MraidMediaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

.field public static final enum MEDIA_CONTENT_TYPE_AUDIO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

.field public static final enum MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    const-string v1, "MEDIA_CONTENT_TYPE_AUDIO"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    .line 42
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    const-string v1, "MEDIA_CONTENT_TYPE_AUDIO_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->$VALUES:[Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->$VALUES:[Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    invoke-virtual {v0}, [Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    return-object v0
.end method
