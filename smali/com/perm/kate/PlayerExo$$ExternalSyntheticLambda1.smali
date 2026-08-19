.class public final synthetic Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda1;->INSTANCE:Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    invoke-static {}, Lcom/perm/kate/PlayerExo;->$r8$lambda$V3UMlZ0fP4X_eM4tLF_mkUsUt44()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory$-CC;->$default$createExtractors(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method
