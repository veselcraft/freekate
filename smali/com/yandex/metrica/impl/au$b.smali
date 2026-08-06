.class final Lcom/yandex/metrica/impl/au$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/yandex/metrica/c$a$f;

.field final b:Lcom/yandex/metrica/impl/b$a;

.field final c:Z


# direct methods
.method constructor <init>(Lcom/yandex/metrica/c$a$f;Lcom/yandex/metrica/impl/b$a;Z)V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/yandex/metrica/impl/au$b;->a:Lcom/yandex/metrica/c$a$f;

    .line 510
    iput-object p2, p0, Lcom/yandex/metrica/impl/au$b;->b:Lcom/yandex/metrica/impl/b$a;

    .line 511
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/au$b;->c:Z

    .line 512
    return-void
.end method
