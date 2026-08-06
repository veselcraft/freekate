.class public final Lcom/my/target/core/enums/a;
.super Ljava/lang/Object;
.source "MediaSectionNames.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "preroll"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pauseroll"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "midroll"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "postroll"

    aput-object v2, v0, v1

    sput-object v0, Lcom/my/target/core/enums/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/my/target/core/enums/a;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
