.class public final Lcom/my/target/core/parsers/vast/b$a;
.super Ljava/lang/Object;
.source "VASTMediaBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/parsers/vast/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/my/target/core/parsers/vast/b$a;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/my/target/core/parsers/vast/b$a;->b:Ljava/lang/String;

    .line 29
    return-void
.end method
