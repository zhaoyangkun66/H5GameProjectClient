.class public final Lcom/facebook/login/DeviceLoginManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/DeviceLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$delegatedProperties:[Lḓ/㞘/ḓ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "L\u1e13/\u3798/\u1e13<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lḓ/㞘/ḓ;

    new-instance v1, Lḓ/ᓭ/㺴/ཇ;

    const-class v2, Lcom/facebook/login/DeviceLoginManager$Companion;

    invoke-static {v2}, Lḓ/ᓭ/㺴/㲝;->உ(Ljava/lang/Class;)Lḓ/㞘/䂻;

    move-result-object v2

    const-string v3, "instance"

    const-string v4, "getInstance()Lcom/facebook/login/DeviceLoginManager;"

    invoke-direct {v1, v2, v3, v4}, Lḓ/ᓭ/㺴/ཇ;-><init>(Lḓ/㞘/㚬;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lḓ/ᓭ/㺴/㲝;->㚬(Lḓ/ᓭ/㺴/ἥ;)Lḓ/㞘/㺴;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/login/DeviceLoginManager$Companion;->$$delegatedProperties:[Lḓ/㞘/ḓ;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lḓ/ᓭ/㺴/ᆻ;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/login/DeviceLoginManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/facebook/login/DeviceLoginManager;
    .locals 1

    invoke-static {}, Lcom/facebook/login/DeviceLoginManager;->access$getInstance$delegate$cp()Lḓ/㚬;

    move-result-object v0

    invoke-interface {v0}, Lḓ/㚬;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/DeviceLoginManager;

    return-object v0
.end method
