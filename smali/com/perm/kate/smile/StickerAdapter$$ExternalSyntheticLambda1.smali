.class public final synthetic Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieComposition;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieComposition;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/airbnb/lottie/LottieComposition;

    iput-object p2, p0, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/airbnb/lottie/LottieComposition;

    iget-object v1, p0, Lcom/perm/kate/smile/StickerAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/perm/kate/smile/StickerAdapter;->$r8$lambda$JD9l5CY1vEaWHe3fpzAKsjJxT2A(Lcom/airbnb/lottie/LottieComposition;Landroid/widget/ImageView;)V

    return-void
.end method
