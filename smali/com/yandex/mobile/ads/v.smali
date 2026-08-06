.class public Lcom/yandex/mobile/ads/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/v$a;
    }
.end annotation


# static fields
.field public static final FULL_HEIGHT:I = -0x2

.field public static final FULL_WIDTH:I = -0x1

.field private static final serialVersionUID:J = 0x5b8e9b91ef443b7cL


# instance fields
.field private final a:Lcom/yandex/mobile/ads/v$a;

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;


# direct methods
.method constructor <init>(IILcom/yandex/mobile/ads/v$a;)V
    .locals 5

    .prologue
    .line 49
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/v;-><init>(IILcom/yandex/mobile/ads/v$a;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method constructor <init>(IILcom/yandex/mobile/ads/v$a;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-gez p1, :cond_0

    const/4 v1, -0x1

    if-ne v1, p1, :cond_3

    :cond_0
    :goto_0
    iput p1, p0, Lcom/yandex/mobile/ads/v;->b:I

    .line 54
    if-gez p2, :cond_1

    const/4 v1, -0x2

    if-ne v1, p2, :cond_2

    :cond_1
    move v0, p2

    :cond_2
    iput v0, p0, Lcom/yandex/mobile/ads/v;->c:I

    .line 55
    iput-object p3, p0, Lcom/yandex/mobile/ads/v;->a:Lcom/yandex/mobile/ads/v$a;

    .line 56
    iput-object p4, p0, Lcom/yandex/mobile/ads/v;->d:Ljava/lang/String;

    .line 57
    return-void

    :cond_3
    move p1, v0

    .line 53
    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 111
    const/4 v0, -0x2

    iget v1, p0, Lcom/yandex/mobile/ads/v;->c:I

    if-ne v0, v1, :cond_0

    .line 112
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/k;->d(Landroid/content/Context;)I

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yandex/mobile/ads/v;->c:I

    goto :goto_0
.end method

.method a()Lcom/yandex/mobile/ads/v$a;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yandex/mobile/ads/v;->a:Lcom/yandex/mobile/ads/v$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p1, p0, :cond_1

    .line 145
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 137
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/yandex/mobile/ads/v;

    if-nez v0, :cond_2

    move v1, v2

    .line 138
    goto :goto_0

    .line 141
    :cond_2
    check-cast p1, Lcom/yandex/mobile/ads/v;

    .line 142
    .end local p1    # "other":Ljava/lang/Object;
    iget v0, p0, Lcom/yandex/mobile/ads/v;->b:I

    iget v3, p1, Lcom/yandex/mobile/ads/v;->b:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/yandex/mobile/ads/v;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/v;->c:I

    if-ne v0, v3, :cond_4

    move v0, v1

    .line 143
    :goto_1
    iget-object v3, p0, Lcom/yandex/mobile/ads/v;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/yandex/mobile/ads/v;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 145
    if-eqz v0, :cond_3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    .line 142
    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/yandex/mobile/ads/v;->c:I

    return v0
.end method

.method public getHeightInPixels(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, -0x2

    iget v1, p0, Lcom/yandex/mobile/ads/v;->c:I

    if-ne v0, v1, :cond_0

    .line 76
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/k;->b(Landroid/content/Context;)I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yandex/mobile/ads/v;->c:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/yandex/mobile/ads/v;->b:I

    return v0
.end method

.method public getWidth(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, -0x1

    iget v1, p0, Lcom/yandex/mobile/ads/v;->b:I

    if-ne v0, v1, :cond_0

    .line 125
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/k;->c(Landroid/content/Context;)I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yandex/mobile/ads/v;->b:I

    goto :goto_0
.end method

.method public getWidthInPixels(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, -0x1

    iget v1, p0, Lcom/yandex/mobile/ads/v;->b:I

    if-ne v0, v1, :cond_0

    .line 99
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;)I

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yandex/mobile/ads/v;->b:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yandex/mobile/ads/v;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yandex/mobile/ads/v;->d:Ljava/lang/String;

    return-object v0
.end method
