.class public final Lcom/yandex/mobile/ads/AdRequestError$Code;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/AdRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Code"
.end annotation


# static fields
.field public static final INTERNAL_ERROR:I = 0x1

.field public static final INVALID_REQUEST:I = 0x2

.field public static final NETWORK_ERROR:I = 0x3

.field public static final NO_FILL:I = 0x4

.field public static final SYSTEM_ERROR:I = 0x5

.field public static final UNKNOWN_ERROR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
