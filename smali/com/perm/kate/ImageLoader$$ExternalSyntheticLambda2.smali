.class public final synthetic Lcom/perm/kate/ImageLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/ImageLoader$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/perm/kate/ImageLoader$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {v0, p1, p2}, Lcom/perm/kate/ImageLoader;->$r8$lambda$jq91lXuCgjCdIsOGsDSW2PWBZzo(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
