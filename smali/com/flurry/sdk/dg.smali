.class public Lcom/flurry/sdk/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dj$b;
.implements Lcom/flurry/sdk/dn$a;


# static fields
.field static a:I = 0x64

.field static b:I = 0xa

.field static c:I = 0x3e8

.field static d:I = 0x27100

.field static e:I = 0x32

.field private static final g:Ljava/lang/String; = "dg"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:B

.field private D:Landroid/location/Location;

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:B

.field private H:J

.field private I:J

.field private final J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/cu$a;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cy;",
            ">;"
        }
    .end annotation
.end field

.field private L:Z

.field private M:I

.field private final N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cx;",
            ">;"
        }
    .end annotation
.end field

.field private O:I

.field private P:I

.field private final Q:Lcom/flurry/sdk/cv;

.field private R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private S:Lcom/flurry/sdk/dj;

.field private T:I

.field private U:Z

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/io/File;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/de;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/do;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:J

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/de;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private u:[B

.field private v:Ljava/lang/String;

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/dg;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/dg;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/dg;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;

    .line 93
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/dg;->p:Ljava/util/Map;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;

    const-string v2, ""

    .line 109
    iput-object v2, p0, Lcom/flurry/sdk/dg;->A:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/flurry/sdk/dg;->B:Ljava/lang/String;

    const/4 v2, -0x1

    .line 111
    iput-byte v2, p0, Lcom/flurry/sdk/dg;->C:B

    .line 121
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;

    .line 129
    new-instance v2, Lcom/flurry/sdk/cv;

    invoke-direct {v2}, Lcom/flurry/sdk/cv;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/dg;->Q:Lcom/flurry/sdk/cv;

    .line 136
    iput-boolean v1, p0, Lcom/flurry/sdk/dg;->U:Z

    .line 159
    sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "Creating new Flurry session"

    invoke-static {v2, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;

    .line 162
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/flurry/sdk/dg;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private A()V
    .locals 20

    move-object/from16 v1, p0

    .line 662
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v2, "generating agent report"

    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    new-instance v2, Lcom/flurry/sdk/cz;

    iget-object v5, v1, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;

    iget-object v6, v1, Lcom/flurry/sdk/dg;->l:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/flurry/sdk/dg;->q:Z

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/sdk/dg;->o()Z

    move-result v8

    iget-wide v9, v1, Lcom/flurry/sdk/dg;->r:J

    iget-wide v11, v1, Lcom/flurry/sdk/dg;->w:J

    iget-object v13, v1, Lcom/flurry/sdk/dg;->s:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/sdk/dg;->p()Ljava/util/Map;

    move-result-object v14

    iget-object v4, v1, Lcom/flurry/sdk/dg;->Q:Lcom/flurry/sdk/cv;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lcom/flurry/sdk/cv;->a(Z)Ljava/util/Map;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/sdk/dg;->a()Ljava/util/Map;

    move-result-object v16

    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/cu;->b()Ljava/util/HashMap;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v4, v2

    invoke-direct/range {v4 .. v19}, Lcom/flurry/sdk/cz;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V

    .line 670
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/flurry/sdk/dg;->s:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v1, Lcom/flurry/sdk/dg;->o:Ljava/util/List;

    .line 672
    invoke-virtual {v2}, Lcom/flurry/sdk/cz;->a()[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generated report of size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/flurry/sdk/cz;->a()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/flurry/sdk/dg;->s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reports."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {v2}, Lcom/flurry/sdk/cz;->a()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/dg;->a([B)V

    .line 679
    iget-object v0, v1, Lcom/flurry/sdk/dg;->s:Ljava/util/List;

    iget-object v2, v1, Lcom/flurry/sdk/dg;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 680
    iput-object v0, v1, Lcom/flurry/sdk/dg;->o:Ljava/util/List;

    .line 683
    invoke-direct/range {p0 .. p0}, Lcom/flurry/sdk/dg;->B()V

    goto :goto_0

    :cond_0
    const-string v2, "Error generating report"

    .line 685
    invoke-static {v0, v2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x6

    .line 688
    sget-object v3, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized B()V
    .locals 4

    monitor-enter p0

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v1, "Error persisting report: could not create directory"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    monitor-exit p0

    return-void

    .line 707
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 708
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 710
    new-instance v0, Lcom/flurry/sdk/dh;

    invoke-direct {v0}, Lcom/flurry/sdk/dh;-><init>()V

    .line 712
    iget-boolean v2, p0, Lcom/flurry/sdk/dg;->q:Z

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/dh;->a(Z)V

    .line 713
    iget-wide v2, p0, Lcom/flurry/sdk/dg;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/dh;->a(J)V

    .line 714
    iget-object v2, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/dh;->a(Ljava/util/List;)V

    .line 716
    iget-object v2, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dh;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 718
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v2, "Error saving persistent data"

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 720
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized C()V
    .locals 7

    monitor-enter p0

    .line 726
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading persistent data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 734
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 735
    :try_start_2
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    :try_start_3
    new-instance v0, Lcom/flurry/sdk/dh;

    invoke-direct {v0}, Lcom/flurry/sdk/dh;-><init>()V

    .line 738
    iget-object v4, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/flurry/sdk/dh;->a(Ljava/io/DataInputStream;Ljava/lang/String;)Z

    .line 740
    invoke-virtual {v0}, Lcom/flurry/sdk/dh;->a()Z

    move-result v4

    iput-boolean v4, p0, Lcom/flurry/sdk/dg;->q:Z

    .line 741
    invoke-virtual {v0}, Lcom/flurry/sdk/dh;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/flurry/sdk/dg;->r:J

    .line 742
    invoke-virtual {v0}, Lcom/flurry/sdk/dh;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x1

    .line 748
    :try_start_4
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 749
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 746
    :goto_0
    :try_start_5
    sget-object v4, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v5, "Error loading persistent data"

    invoke-static {v4, v5, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 748
    :try_start_6
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 749
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    const/4 v1, 0x3

    .line 753
    sget-object v2, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v4, "Deleting agent cache file"

    invoke-static {v1, v2, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 748
    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 749
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    const-string v1, "Agent cache file doesn\'t exist."

    .line 757
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_3
    if-nez v0, :cond_2

    .line 761
    iput-boolean v3, p0, Lcom/flurry/sdk/dg;->q:Z

    .line 762
    iget-wide v0, p0, Lcom/flurry/sdk/dg;->w:J

    iput-wide v0, p0, Lcom/flurry/sdk/dg;->r:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 764
    :cond_2
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private D()V
    .locals 1

    .line 767
    iget v0, p0, Lcom/flurry/sdk/dg;->T:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/dg;->T:I

    return-void
.end method

.method private E()V
    .locals 1

    .line 771
    iget v0, p0, Lcom/flurry/sdk/dg;->T:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 772
    iput v0, p0, Lcom/flurry/sdk/dg;->T:I

    :cond_0
    return-void
.end method

.method private F()Ljava/lang/String;
    .locals 3

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private G()I
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/flurry/sdk/dg;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private H()I
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/flurry/sdk/dg;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dg;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/dg;->t:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/dg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/dg;->v:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cy;

    .line 433
    invoke-virtual {v1}, Lcom/flurry/sdk/cy;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/flurry/sdk/cy;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/cy;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 437
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic a(Lcom/flurry/sdk/dg;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->C()V

    return-void
.end method

.method private a(Lcom/flurry/sdk/do;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/flurry/sdk/dg;->p:Ljava/util/Map;

    monitor-enter v0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/dg;->p:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a([B)V
    .locals 3

    .line 693
    invoke-static {}, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->getInstance()Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->a()Lcom/flurry/sdk/da;

    move-result-object v0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flurry/sdk/dk;->a()Lcom/flurry/sdk/dk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/dk;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    iget-object v2, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/flurry/sdk/db;->b([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dg;[B)[B
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/dg;->u:[B

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dg;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->v()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/dg;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;

    return-object p0
.end method

.method private d(Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 379
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 380
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 383
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch Options Bundle is present "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 387
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 388
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 397
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "null"

    .line 399
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v5, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launch options Key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Its value: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/dg;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->B()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/dg;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->y()V

    return-void
.end method

.method private u()V
    .locals 6

    .line 166
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "Gender"

    .line 168
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iput-byte v2, p0, Lcom/flurry/sdk/dg;->G:B

    .line 169
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    .line 170
    sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, Gender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/flurry/sdk/dg;->G:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "UserId"

    .line 172
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v2, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSettings, UserId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "LogEvents"

    .line 176
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/flurry/sdk/dg;->E:Z

    .line 177
    invoke-virtual {v0, v2, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSettings, LogEvents = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/flurry/sdk/dg;->E:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "Age"

    .line 180
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/flurry/sdk/dg;->H:J

    .line 181
    invoke-virtual {v0, v2, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSettings, BirthDate = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/flurry/sdk/dg;->H:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "ContinueSessionMillis"

    .line 184
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/flurry/sdk/dg;->I:J

    .line 186
    invoke-virtual {v0, v2, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings, ContinueSessionMillis = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/flurry/sdk/dg;->I:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private v()V
    .locals 4

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dg;->v:Ljava/lang/String;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 413
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v2, "Fetched phone id"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/flurry/sdk/do;->a:Lcom/flurry/sdk/do;

    iget-object v2, p0, Lcom/flurry/sdk/dg;->v:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/do;Ljava/nio/ByteBuffer;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dg;->u:[B

    if-eqz v0, :cond_1

    .line 417
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v2, "Fetched hashed IMEI"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/flurry/sdk/do;->b:Lcom/flurry/sdk/do;

    iget-object v2, p0, Lcom/flurry/sdk/dg;->u:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/do;Ljava/nio/ByteBuffer;)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dg;->t:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_2

    .line 421
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v2, "Fetched advertising id"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/flurry/sdk/do;->c:Lcom/flurry/sdk/do;

    iget-object v1, p0, Lcom/flurry/sdk/dg;->t:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/do;Ljava/nio/ByteBuffer;)V

    .line 425
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x6

    .line 427
    sget-object v2, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private w()V
    .locals 1

    .line 440
    new-instance v0, Lcom/flurry/sdk/dg$7;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$7;-><init>(Lcom/flurry/sdk/dg;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method private x()V
    .locals 1

    .line 453
    new-instance v0, Lcom/flurry/sdk/dg$8;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$8;-><init>(Lcom/flurry/sdk/dg;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method private y()V
    .locals 4

    .line 465
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 466
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 469
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->A()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 467
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x6

    .line 472
    sget-object v2, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private z()V
    .locals 1

    .line 477
    new-instance v0, Lcom/flurry/sdk/dg$9;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$9;-><init>(Lcom/flurry/sdk/dg;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/flurry/sdk/dg;->R:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x4

    .line 216
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing new Flurry session with context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/dg;->m:Ljava/lang/ref/WeakReference;

    .line 220
    new-instance v0, Lcom/flurry/sdk/dj;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dj;-><init>(Lcom/flurry/sdk/dj$b;)V

    iput-object v0, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;

    .line 222
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;

    .line 224
    invoke-static {}, Lcom/flurry/sdk/dy;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dg;->l:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 227
    iput-wide v0, p0, Lcom/flurry/sdk/dg;->y:J

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/flurry/sdk/dg;->O:I

    .line 229
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/dg;->B:Ljava/lang/String;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/dg;->A:Ljava/lang/String;

    const/4 v1, 0x1

    .line 231
    iput-boolean v1, p0, Lcom/flurry/sdk/dg;->L:Z

    .line 232
    iput v0, p0, Lcom/flurry/sdk/dg;->M:I

    .line 233
    iput v0, p0, Lcom/flurry/sdk/dg;->P:I

    .line 235
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dg;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dg;->R:Ljava/util/Map;

    .line 237
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->u()V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/flurry/sdk/dg;->w:J

    .line 241
    iput-wide v2, p0, Lcom/flurry/sdk/dg;->x:J

    .line 244
    new-instance v0, Lcom/flurry/sdk/dg$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$1;-><init>(Lcom/flurry/sdk/dg;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V

    .line 251
    new-instance v0, Lcom/flurry/sdk/dg$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$2;-><init>(Lcom/flurry/sdk/dg;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V

    .line 258
    new-instance v0, Lcom/flurry/sdk/dg$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$3;-><init>(Lcom/flurry/sdk/dg;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V

    .line 265
    new-instance v0, Lcom/flurry/sdk/dg$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$4;-><init>(Lcom/flurry/sdk/dg;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V

    .line 272
    new-instance v0, Lcom/flurry/sdk/dg$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$5;-><init>(Lcom/flurry/sdk/dg;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V

    .line 279
    invoke-static {}, Lcom/flurry/sdk/em;->a()Lcom/flurry/sdk/em;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/em;->a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    .line 281
    iput-boolean v1, p0, Lcom/flurry/sdk/dg;->U:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/flurry/sdk/fc;)V
    .locals 1

    .line 147
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dl;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Gender"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 195
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lcom/flurry/sdk/dg;->G:B

    .line 196
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, Gender = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lcom/flurry/sdk/dg;->G:B

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "UserId"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;

    .line 199
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, UserId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "LogEvents"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/dg;->E:Z

    .line 202
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, LogEvents = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/flurry/sdk/dg;->E:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Age"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/flurry/sdk/dg;->H:J

    .line 205
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, Birthdate = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/flurry/sdk/dg;->H:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "ContinueSessionMillis"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 207
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/flurry/sdk/dg;->I:J

    .line 208
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, ContinueSessionMillis = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/flurry/sdk/dg;->I:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    .line 211
    sget-object p2, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "uncaught"

    .line 629
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x0

    .line 632
    :goto_0
    iget v3, p0, Lcom/flurry/sdk/dg;->O:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/flurry/sdk/dg;->O:I

    .line 633
    iget-object v1, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/flurry/sdk/dg;->e:I

    if-ge v1, v3, :cond_1

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 635
    new-instance v9, Lcom/flurry/sdk/cx;

    invoke-direct {p0}, Lcom/flurry/sdk/dg;->H()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/flurry/sdk/cx;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 637
    iget-object p1, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error logged: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/flurry/sdk/cx;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_3

    .line 643
    :goto_1
    iget-object v1, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 644
    iget-object v1, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cx;

    .line 645
    invoke-virtual {v1}, Lcom/flurry/sdk/cx;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "uncaught"

    invoke-virtual {v1}, Lcom/flurry/sdk/cx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 648
    new-instance v10, Lcom/flurry/sdk/cx;

    invoke-direct {p0}, Lcom/flurry/sdk/dg;->H()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, v10

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/flurry/sdk/cx;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    iget-object p1, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;

    invoke-interface {p1, v0, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 655
    :cond_3
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string p2, "Max errors logged. No more errors logged."

    invoke-static {p1, p2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 536
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dg;->x:J

    sub-long v8, v0, v2

    .line 538
    invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 539
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 540
    monitor-exit p0

    return-void

    .line 542
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flurry/sdk/cu$a;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 544
    iget-object p1, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    sget v1, Lcom/flurry/sdk/dg;->a:I

    if-ge p1, v1, :cond_1

    .line 545
    new-instance p1, Lcom/flurry/sdk/cu$a;

    invoke-direct {p1}, Lcom/flurry/sdk/cu$a;-><init>()V

    .line 546
    iput v0, p1, Lcom/flurry/sdk/cu$a;->a:I

    .line 547
    iget-object v0, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;

    invoke-interface {v0, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event count started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_1
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many different events. Event not counted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :cond_2
    iget v1, p1, Lcom/flurry/sdk/cu$a;->a:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/flurry/sdk/cu$a;->a:I

    .line 556
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event count incremented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_0
    iget-boolean p1, p0, Lcom/flurry/sdk/dg;->E:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v1, Lcom/flurry/sdk/dg;->c:I

    if-ge p1, v1, :cond_6

    iget p1, p0, Lcom/flurry/sdk/dg;->M:I

    sget v1, Lcom/flurry/sdk/dg;->d:I

    if-ge p1, v1, :cond_6

    if-nez p2, :cond_3

    .line 561
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_3
    move-object v7, p2

    .line 563
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result p1

    sget p2, Lcom/flurry/sdk/dg;->b:I

    if-le p1, p2, :cond_4

    .line 564
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MaxEventParams exceeded: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 566
    :cond_4
    new-instance p1, Lcom/flurry/sdk/cy;

    invoke-direct {p0}, Lcom/flurry/sdk/dg;->G()I

    move-result v5

    move-object v4, p1

    move v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/flurry/sdk/cy;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    .line 569
    invoke-virtual {p1}, Lcom/flurry/sdk/cy;->d()I

    move-result p2

    iget p3, p0, Lcom/flurry/sdk/dg;->M:I

    add-int/2addr p2, p3

    sget p3, Lcom/flurry/sdk/dg;->d:I

    if-gt p2, p3, :cond_5

    .line 570
    iget-object p2, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    iget p2, p0, Lcom/flurry/sdk/dg;->M:I

    invoke-virtual {p1}, Lcom/flurry/sdk/cy;->d()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/flurry/sdk/dg;->M:I

    goto :goto_1

    .line 575
    :cond_5
    iput p3, p0, Lcom/flurry/sdk/dg;->M:I

    .line 576
    iput-boolean v0, p0, Lcom/flurry/sdk/dg;->L:Z

    .line 578
    sget-object p1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string p2, "Event Log size exceeded. No more event details logged."

    invoke-static {p1, p2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 583
    :cond_6
    iput-boolean v0, p0, Lcom/flurry/sdk/dg;->L:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/flurry/sdk/dg;->q:Z

    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 285
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/dg;->U:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 286
    monitor-exit p0

    return-void

    .line 289
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start session with context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/dg;->m:Ljava/lang/ref/WeakReference;

    .line 293
    iget-object v0, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;

    invoke-virtual {v0}, Lcom/flurry/sdk/dj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;

    invoke-virtual {v0}, Lcom/flurry/sdk/dj;->a()V

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->D()V

    .line 299
    invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->c()V

    .line 300
    invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->f()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dg;->D:Landroid/location/Location;

    .line 302
    invoke-static {}, Lcom/flurry/sdk/em;->a()Lcom/flurry/sdk/em;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/em;->b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 4

    monitor-enter p0

    .line 333
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/dg;->U:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 334
    monitor-exit p0

    return-void

    .line 337
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v1, "Finalize session"

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;

    invoke-virtual {v1}, Lcom/flurry/sdk/dj;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;

    invoke-virtual {v1}, Lcom/flurry/sdk/dj;->a()V

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->g()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session with apiKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was ended while getSessionCount() is not 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 349
    iput v0, p0, Lcom/flurry/sdk/dg;->T:I

    .line 352
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->x()V

    .line 354
    invoke-static {}, Lcom/flurry/sdk/em;->a()Lcom/flurry/sdk/em;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/em;->a(Lcom/flurry/sdk/dg;)V

    .line 357
    new-instance v0, Lcom/flurry/sdk/dg$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$6;-><init>(Lcom/flurry/sdk/dg;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V

    .line 364
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "Gender"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z

    .line 366
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z

    .line 368
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "Age"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z

    .line 369
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z

    .line 371
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 306
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/dg;->U:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 307
    monitor-exit p0

    return-void

    .line 310
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/em;->a()Lcom/flurry/sdk/em;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/em;->c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    .line 312
    invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->f()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dg;->D:Landroid/location/Location;

    .line 313
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->z()V

    .line 315
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->E()V

    .line 317
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End session with context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " count:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 321
    iget-wide v2, p0, Lcom/flurry/sdk/dg;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/dg;->y:J

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dg;->a(J)V

    .line 325
    invoke-direct {p0}, Lcom/flurry/sdk/dg;->w()V

    .line 327
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->g()I

    move-result p1

    if-nez p1, :cond_1

    .line 328
    iget-object p1, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;

    iget-wide v0, p0, Lcom/flurry/sdk/dg;->I:J

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/dj;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized d()Lcom/flurry/sdk/de;
    .locals 3

    monitor-enter p0

    .line 489
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/df;

    invoke-direct {v0}, Lcom/flurry/sdk/df;-><init>()V

    .line 491
    iget-object v1, p0, Lcom/flurry/sdk/dg;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->a(Ljava/lang/String;)V

    .line 492
    iget-wide v1, p0, Lcom/flurry/sdk/dg;->w:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/df;->a(J)V

    .line 493
    iget-wide v1, p0, Lcom/flurry/sdk/dg;->y:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/df;->b(J)V

    .line 494
    iget-wide v1, p0, Lcom/flurry/sdk/dg;->z:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/df;->c(J)V

    .line 495
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->b(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->c(Ljava/lang/String;)V

    .line 497
    iget-byte v1, p0, Lcom/flurry/sdk/dg;->C:B

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->a(I)V

    .line 498
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->d(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/flurry/sdk/dg;->D:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->a(Landroid/location/Location;)V

    .line 502
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->b(I)V

    .line 503
    iget-byte v1, p0, Lcom/flurry/sdk/dg;->G:B

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->a(B)V

    .line 504
    iget-wide v1, p0, Lcom/flurry/sdk/dg;->H:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->a(Ljava/lang/Long;)V

    .line 506
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->t()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->a(Ljava/util/Map;)V

    .line 507
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->a(Ljava/util/List;)V

    .line 508
    iget-boolean v1, p0, Lcom/flurry/sdk/dg;->L:Z

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->a(Z)V

    .line 510
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->s()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->b(Ljava/util/List;)V

    .line 511
    iget v1, p0, Lcom/flurry/sdk/dg;->O:I

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 515
    :try_start_1
    new-instance v2, Lcom/flurry/sdk/de;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/de;-><init>(Lcom/flurry/sdk/df;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 517
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_0

    .line 521
    sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;

    const-string v2, "New session report wasn\'t created"

    invoke-static {v0, v2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()I
    .locals 1

    .line 532
    iget v0, p0, Lcom/flurry/sdk/dg;->P:I

    return v0
.end method

.method g()I
    .locals 1

    .line 777
    iget v0, p0, Lcom/flurry/sdk/dg;->T:I

    return v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/flurry/sdk/dg;->v:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/flurry/sdk/dg;->A:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/flurry/sdk/dg;->B:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/flurry/sdk/dg;->t:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public p()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/do;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/flurry/sdk/dg;->p:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public q()V
    .locals 0

    .line 864
    invoke-virtual {p0}, Lcom/flurry/sdk/dg;->c()V

    return-void
.end method

.method r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cy;",
            ">;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;

    return-object v0
.end method

.method s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cx;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;

    return-object v0
.end method

.method t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/cu$a;",
            ">;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;

    return-object v0
.end method
