.class public Lcom/yandex/metrica/impl/ob/o;
.super Lcom/yandex/metrica/impl/ob/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/o$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/p",
        "<",
        "Lcom/yandex/metrica/impl/ob/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/aq;

.field private final b:Lcom/yandex/metrica/impl/ob/ap;

.field private final c:Lcom/yandex/metrica/impl/ob/ao;

.field private final d:Lcom/yandex/metrica/impl/ob/ad;

.field private final e:Lcom/yandex/metrica/impl/ob/al;

.field private final f:Lcom/yandex/metrica/impl/ob/am;

.field private final g:Lcom/yandex/metrica/impl/ob/aa;

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/yandex/metrica/impl/ob/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/p;-><init>()V

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/aq;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/aq;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->a:Lcom/yandex/metrica/impl/ob/aq;

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/ap;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ap;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->b:Lcom/yandex/metrica/impl/ob/ap;

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/ao;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ao;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->c:Lcom/yandex/metrica/impl/ob/ao;

    .line 44
    new-instance v0, Lcom/yandex/metrica/impl/ob/ad;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ad;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->d:Lcom/yandex/metrica/impl/ob/ad;

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/al;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/al;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->e:Lcom/yandex/metrica/impl/ob/al;

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/am;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/am;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->f:Lcom/yandex/metrica/impl/ob/am;

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/aa;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/aa;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->g:Lcom/yandex/metrica/impl/ob/aa;

    .line 48
    return-void
.end method


# virtual methods
.method a(I)Lcom/yandex/metrica/impl/ob/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/impl/ob/m",
            "<",
            "Lcom/yandex/metrica/impl/ob/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    .line 53
    invoke-static {p1}, Lcom/yandex/metrica/impl/q$a;->a(I)Lcom/yandex/metrica/impl/q$a;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/yandex/metrica/impl/ob/o$1;->a:[I

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/q$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/l;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/l;-><init>(Ljava/util/List;)V

    return-object v0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->f:Lcom/yandex/metrica/impl/ob/am;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->f:Lcom/yandex/metrica/impl/ob/am;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->d:Lcom/yandex/metrica/impl/ob/ad;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->a:Lcom/yandex/metrica/impl/ob/aq;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->b:Lcom/yandex/metrica/impl/ob/ap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->c:Lcom/yandex/metrica/impl/ob/ao;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->e:Lcom/yandex/metrica/impl/ob/al;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->d:Lcom/yandex/metrica/impl/ob/ad;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :pswitch_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->g:Lcom/yandex/metrica/impl/ob/aa;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :pswitch_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/o;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/o;->e:Lcom/yandex/metrica/impl/ob/al;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
